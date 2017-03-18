# frozen_string_literal: true
require 'rails_helper'

RSpec.describe ListNode, type: :model do

  context '#flatten' do
    let(:list_head) { FactoryGirl.create(:list_head) }
    let(:file_dir) { FactoryGirl.create(:file_dir, name: '/file/dir/album/audio_file') }
    let(:artist) { FactoryGirl.create(:artist) }
    let(:album1) { FactoryGirl.create(:album, album_dir: file_dir.parent, album_artist: artist) }
    let(:audio_file1) { FactoryGirl.create(:audio_file, file_dir: file_dir, album: album1) }
    let(:audio_file2) { FactoryGirl.create(:audio_file, file_dir: file_dir, album: album1) }
    
    let(:node_head) { FactoryGirl.create(:list_node, listable: list_head) }
    let!(:node_af1) { node_head.children.create(listable: audio_file1, position: 1) }
    let!(:node_af2) { node_head.children.create(listable: audio_file2, position: 2) }

    let!(:node_album1) { node_head.children.create(listable: album1, position: 3) }
    let!(:node_album1_af1) { node_album1.children.create(listable: audio_file1, position: 1) }
    let!(:node_album1_af2) { node_album1.children.create(listable: audio_file2, position: 2) }

    it 'is setup' do
      expect(node_album1_af1.parent).to eq node_album1
      expect(node_album1.child_ids).to include node_album1_af1.id
      expect(node_album1_af2.parent).to eq node_album1
      expect(node_album1_af1.parent.parent).to eq node_head
      expect(node_album1_af2.parent.parent).to eq node_head
      expect(node_album1_af1.position).to eq 1
      expect(node_album1_af2.position).to eq 2
    end
    
    context 'flattens' do
      before do
        node_head.flatten(node_album1)
      end
      it 'flattend' do
        expect(node_album1_af1.reload.parent).to eq node_head
        expect(node_album1_af2.reload.parent).to eq node_head
        expect(node_album1_af1.reload.position).to eq 3
        expect(node_album1_af2.reload.position).to eq 4
        expect(node_head.reload.child_ids).to include node_album1_af1.id
        expect(node_head.reload.child_ids).to include node_album1_af2.id
      end
    end
  end
  
  context '#move_to' do
    let(:list_head) { FactoryGirl.create(:list_head) }
    let(:file_dir) { FactoryGirl.create(:file_dir, name: '/file/dir/album/audio_file') }
    let(:artist) { FactoryGirl.create(:artist) }
    let(:album1) { FactoryGirl.create(:album, album_dir: file_dir.parent, album_artist: artist) }
    let(:audio_file1) { FactoryGirl.create(:audio_file, file_dir: file_dir, album: album1) }
    let(:audio_file2) { FactoryGirl.create(:audio_file, file_dir: file_dir, album: album1) }
    
    let(:node_head) { FactoryGirl.create(:list_node, listable: list_head) }
    let!(:node_af1) { node_head.children.create(listable: audio_file1, position: 1) }
    let!(:node_af2) { node_head.children.create(listable: audio_file2, position: 2) }

    it 'is setup' do
      expect(node_af1.parent).to eq node_head
      expect(node_af2.parent).to eq node_head
      expect(node_af1.position).to eq 1
      expect(node_af2.position).to eq 2
    end
    
    context 'moves' do
      context 'to another list' do
        let!(:node_album1) { node_head.children.create(listable: album1, position: 3) }
        let!(:node_album1_af1) { node_album1.children.create(listable: audio_file1, position: 1) }
        let!(:node_album1_af2) { node_album1.children.create(listable: audio_file2, position: 2) }

        it 'is setup' do
          expect(node_album1_af1.parent).to eq node_album1
          expect(node_album1.child_ids).to include node_album1_af1.id
          expect(node_album1_af2.parent).to eq node_album1
          expect(node_album1_af1.parent.parent).to eq node_head
          expect(node_album1_af2.parent.parent).to eq node_head
          expect(node_album1_af1.position).to eq 1
          expect(node_album1_af2.position).to eq 2
        end

        context 'to parent' do
          before do
            node_album1_af2.move_to(node_head.id,1)
          end
          
          it 'changes parent' do
            expect(node_album1_af2.parent).to eq node_head
          end

          it 'is in new list' do
            expect(node_head.child_ids).to include node_album1_af2.id
          end

          it 'updates new list positions' do
            expect(node_af1.reload.position).to eq 2
            expect(node_af2.reload.position).to eq 3
          end

          it 'changes position' do
            expect(node_album1_af2.reload.position).to eq 1
          end

          it 'is not in its former place' do
            expect(node_album1.child_ids).to_not include node_album1_af2.id
          end
        end

      end

      context 'forward' do
        before do
          node_af1.move_to(node_head.id,2)
        end
        it 'retains parent' do
          expect(node_af1.parent).to eq node_head
          expect(node_af2.parent).to eq node_head
        end
        it 'sets node_af2 to position 1' do
          expect(node_af2.reload.position).to eq 1
        end
        it 'sets node_af1 to position 2' do
          expect(node_af1.reload.position).to eq 2
        end
      end

      context 'back' do
        before do
          node_af2.move_to(node_head.id,1)
        end
        it 'retains parent' do
          expect(node_af1.parent).to eq node_head
          expect(node_af2.parent).to eq node_head
        end
        it 'sets node_af2 to position 1' do
          expect(node_af2.reload.position).to eq 1
        end
        it 'sets node_af1 to position 2' do
          expect(node_af1.reload.position).to eq 2
        end
      end
    end
    
  end



  context :basic do
    let(:list_head) { FactoryGirl.create(:list_head) }
    let(:file_dir) { FactoryGirl.create(:file_dir, name: '/file/dir/album/audio_file') }
    let(:artist) { FactoryGirl.create(:artist) }
    let(:album1) { FactoryGirl.create(:album, album_dir: file_dir.parent, album_artist: artist) }
    let(:album2) { FactoryGirl.create(:album, album_dir: file_dir.parent, album_artist: artist) }
    let(:audio_file1) { FactoryGirl.create(:audio_file, file_dir: file_dir, album: album1) }
    let(:audio_file2) { FactoryGirl.create(:audio_file, file_dir: file_dir, album: album1) }
    let(:audio_file3) { FactoryGirl.create(:audio_file, file_dir: file_dir, album: album1) }
    let(:audio_file4) { FactoryGirl.create(:audio_file, file_dir: file_dir, album: album1) }


    let(:node_head) { FactoryGirl.create(:list_node, listable: list_head) }
    let(:node_af2) { node_head.children.create(listable: audio_file2, position: 1) }
    let(:node_album1) { node_head.children.create(listable: album1, position: 0) }
    let(:node_album1_af1) { node_album1.children.create(listable: audio_file1, position: 0) }

    context 'list_head' do
      it 'has a list_head' do
        expect(node_head.listable).to eq list_head
        expect(node_head.listable_id).to eq list_head.id
        expect(node_head.listable_type).to eq list_head.class.to_s
      end
    end

    context 'album' do
      it "is child of listhead" do
        expect(node_head.children).to include node_album1
        expect(node_head.children.first.listable).to eq album1
        expect(node_album1.parent.listable).to eq list_head
      end
      context 'audio_file' do
        it "is child of album" do
          expect(node_album1.children).to include node_album1_af1
          expect(node_album1.children.first.listable).to eq audio_file1
          expect(node_album1_af1.parent.listable).to eq album1
        end
      end
    end
    context 'audio_file' do
      it "is child of head" do
        expect(node_head.children).to include node_af2
        expect(node_af2.parent.listable).to eq list_head
      end
    end
  end
end

# README

PlayZ allows one to access their private music collection from anywhere
one has web access. This includes the ability to search their collection
by artist, song, album or **lyrics**.


This is a proof of concept project and therefore does not have extensive
documentation for setting up a new site.

# Versions

* Ruby 2.4

* Rails 5.0

# Technologies

* For fast searches **Sunspot Solr** is used.

* Database used in the demo is postgresql, but any rails compatible database
could be used

* **Twitter Bootstrap** is used for the majority of the UX.

* JavaScript uses the **jQuery** library.

* Playback is handled by **Sound Manager 2**, due to its handling of its extensive
  fallback options for browsers that don't support intrinsic HTML5 audio.

* Makes extensive use of **HTML5** and **CSS3**

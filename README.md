# README
---

Ruby 2.4.0 + Rails 5.1.1 (+ FFMPEG for recording thumbnails).  
Use `bundle install` to install all required dependencies.  
Run `mv sample.env .env` and change the values in the file to suit your environment.  
Run `mv config/initializers/sample.secret_token.rb config/initializers/secret_token.rb` and place your generated secret key (follow instructions in file) in `secret_key_base`.


### KNOWN BUGS
* If a URL for a non-existent recording is entered (either show or edit), app redirects to JSON saying "Couldn't find Upload with 'id'=_x_" instead of raising 404
* IMS-LTI gem version 2.1.2 produces ``undefined method `valid_signature?'`` error; must use 2.0.0beta41 for now.

### TO-DO
* Check to see if newer version of React is behind the bug listed above (EDIT: IT IS)
  * If so, implement newer React code to fix the problem
* Add validation colors for edit/new pages
* Add progress bar after upload/edit
* Use SweetAlert2 for deleting recordings
* Find way to size DataTables columns more reasonably
* Add Delete button to recordrtc show view
* SEPARATE CONCERNS AGAIN
* Rename and organize controllers and routes
* Implement Inspinia theme
* Find error in IMS-LTI 2.1.2 gem
* Standardize by either using only pure JS or only jQuery
* Separate recordings per user (ask Jesus how to use LTI data to separate user object ownership). Also separate recordrtc controller views per user (ex.: user 1 has recordings id 1, 2 and 3, and user 2 has separate recordings id 1, 2, 3 and 4. Neither can access each others' edit or show pages)
* Add Adapter.js to standardize experience across browsers
* OPTIONAL: Add video thumbnails to home page
* OPTIONAL: Integrate Shrine's URL storage for cache
* TBD: Add support for audio recording (need to determine if needed)

### NOTES

* xmlUrl = the generated url
* generatedXML = the generated xml in the container
* As of yet, no known way to attach blob to file input in form, so a mock-form sent as XHR FormData is necessary in lieu of form_for
* Some other controllers (such as registration) had CSS/JS in a file that did not match the controller name (registration had CSS in guide); eventually these styles will have to be added to their own file
* Cannot separate concerns for partials or React files
* Is it really a good idea to constantly be sending AJAX requests? Not very scalable, messes with search box (solution: find way to refresh page without resetting session)
* THIS IS THE OPEN-SOURCE VERSION OF THE APP
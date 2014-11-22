gulp        = require 'gulp'
jade        = require 'gulp-jade'
rename      = require 'gulp-rename'
csso        = require 'gulp-csso'
less        = require 'gulp-less'
coffee      = require 'gulp-coffee'
browserify  = require 'browserify'
source      = require 'vinyl-source-stream'
uglify      = require 'gulp-uglify'
streamify   = require 'gulp-streamify'
del         = require 'del'
bowerFiles  = require 'main-bower-files'
concat      = require 'gulp-concat'

gulp.task 'clean', ->
  del(['dist/*'])

gulp.task 'html', ->
  gulp.src 'src/*.jade'
    .pipe jade()
    .pipe gulp.dest 'dist/'

gulp.task 'css', ->
  gulp.src 'src/styles/*.less'
    .pipe less()
    .pipe csso()
    .pipe rename 'style.min.css'
    .pipe gulp.dest 'dist/'

gulp.task 'css-bootstrap', ->
  gulp.src 'bower_components/bootstrap/dist/css/bootstrap.min.css'
    .pipe gulp.dest 'dist/bower_components'

gulp.task 'coffee', ->
  gulp.src 'src/scripts/**/*.coffee'
    .pipe coffee()
    .pipe gulp.dest 'dist/'

gulp.task 'browserify', ->
  browserify './dist/app'
    .bundle()
    .pipe source 'bundle.js'
    .pipe streamify(uglify())
    .pipe gulp.dest('dist/')

gulp.task 'js', ['coffee', 'browserify']

gulp.task 'vendor', ->
  gulp.src bowerFiles()
    .pipe concat('vendor.js')
    .pipe uglify()
    .pipe gulp.dest './dist'

gulp.task 'watch', ->
  gulp.watch('src/styles/*.less', ['css'])
  gulp.watch('src/scripts/**/*.coffee', ['js'])

gulp.task 'default', ['html', 'css', 'js', 'vendor']

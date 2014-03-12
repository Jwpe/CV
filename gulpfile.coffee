gulp = require 'gulp'

markdownpdf = require 'gulp-markdown-pdf'

gulp.task 'build', ->
    gulp.src('CV.md')
        .pipe(markdownpdf())
        .pipe(gulp.dest(''))

gulp.task('default', ['build'])

gulp = require 'gulp'
rename = require 'gulp-rename'
markdownpdf = require 'gulp-markdown-pdf'

gulp.task 'build', ->
    options = {
        cssPath: '../../../main.css'
    }

    gulp.src('README.md')
        .pipe(markdownpdf(options))
        .pipe(rename('CV.pdf'))
        .pipe(gulp.dest(''))

gulp.task('default', ['build'])

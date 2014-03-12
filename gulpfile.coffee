gulp = require 'gulp'

markdownpdf = require 'gulp-markdown-pdf'

gulp.task 'build', ->
    options = {
        cssPath: '../../../main.css'
    }

    console.log(options.cssPath)

    gulp.src('CV.md')
        .pipe(markdownpdf(options))
        .pipe(gulp.dest(''))

gulp.task('default', ['build'])

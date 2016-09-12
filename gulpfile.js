// var for required packages
var gulp = require('gulp'), 
    concat = require('gulp-concat'), 
    minifyCSS = require('gulp-minify-css');
    sass = require('gulp-sass');

// base config for sass
var config = {
        styles : 'apps/core/static/sass/main.sass',
};

// compile sass for .css
gulp.task('sass', function() {
    gulp.src(config.styles)
        .pipe(sass())
        .pipe(minifyCSS())
        .pipe(concat('main.css'))
        .pipe(gulp.dest('apps/core/static/css'));
});

// watch for see all files listed on project
gulp.task('watch', function() {
    gulp.watch('apps/core/static/sass/**/*.sass', ['sass']);
});

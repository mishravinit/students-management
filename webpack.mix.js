let mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

// mix.sass('resources/assets/sass/app.scss', 'public/css');

// BREAD
mix.js('resources/assets/js/bread/enrollments.js', 'public/js');
mix.js('resources/assets/js/bread/attendance.make.js', 'public/js');

// Reports
mix.js('resources/assets/js/reports/inout.js', 'public/js');
pace-cis
========

Automatic page load progress bar.

Include pace.js and a CSS theme of your choice, and you get a beautiful progress indicator for your page load and ajax navigation.

No need to hook into any of your code, progress is detected automatically.


INSTALLTION

First thing you need to do is the installation , you can follow the below mentioned steps to install the gem inside your rails application.
You need to add sudo if you are not using rvm(ruby version manager)


Add this following line in your Gemfile.
```
gem 'pace-cis'
```

Then run,

```
bundle install
```

Configuration:

If your working in Rails version >= 3 then just run the below command

```
  rails g pace_cis:install
```

Running the above command will insert the required things into your js and css files the default css it include is the "pace-theme-corner-indicator" if you want to change it as per your projects requirement then other options are shown below.

But if you are using Rails version <=2 then go for the below steps

Then you need to add the following line on your application.js

```
  //= require pace
```

Then add the required line in application.css

```
  *= require pace-theme-big-counter
```
Or
```
  *= require pace-theme-barber-shop
```
Or
```
  *= require pace-theme-bounce
```
Or
```
  *= require pace-theme-center-circle
```
Or
```
  *= require pace-theme-corner-indicator
```
Or
```
  *= require pace-theme-fill-left
```
Or
```
  *= require pace-theme-flash
```
Or
```
  *= require pace-theme-flat-top
```
Or
```
  *= require pace-theme-mac-osx
```
Or
```
  *= require pace-theme-minimal
```


If you want to change the color of the progress bar according to your project requirement:

<pre>
  .pace .pace-progress:after {
    color :green !important;
  }
</pre>


Reference Site:

For more information you can refer to following site:

<a href="http://github.hubspot.com/pace/docs/welcome/">pace.js</a>

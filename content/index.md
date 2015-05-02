---
title:  'Docs'
subtitle: 'This is a desc'
author: 'Salpy Kelian, John Doe'
date: 'May 1, 2015'
...

# [A level-one header](#sample-of-ordered-lists)
## A level-two header
### A level-three header
#### A level-four header
##### A level-five header {.blue-header}
###### A level-six header

    /**Raw code comment**/
    function(){
        console.log("This is an example of raw code");
    }


~~~~ {#mycode .javascript .numberLines startFrom="20"}
var myFunc = function() {
                return "hello";
             }

~~~~~~~~~~~~~~

![My image caption](images/butterfly.jpg)




Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras auctor nunc eu porta vestibulum. Donec interdum volutpat urna at venenatis. Quisque tellus metus, lobortis ut placerat ut, ullamcorper elementum augue. Etiam tortor nunc, condimentum in nulla sit amet, semper imperdiet massa. Cras risus erat, dictum in tempor vel, mattis vitae massa. Nam sollicitudin orci at enim pharetra, id venenatis nulla vulputate. Sed eleifend vulputate semper. Suspendisse id arcu sit amet elit aliquam tincidunt ac id lorem. Cras eu gravida lorem. Aenean aliquam tincidunt interdum. Nam mattis nulla orci, non volutpat mauris pharetra et. Mauris sit amet imperdiet purus, id porta dui. Quisque diam magna, dictum in elit id, pellentesque tempor risus. Phasellus adipiscing nulla ac rutrum imperdiet. Nulla faucibus nibh sit amet est congue iaculis.

Sed ultricies eleifend leo. Curabitur et neque a elit vehicula convallis eu id odio. Morbi ligula mi, scelerisque vitae consequat nec, convallis ut arcu. Proin rutrum magna massa, ac venenatis felis faucibus non. Aliquam eget sapien feugiat, mollis sapien interdum, dictum justo. Sed interdum sed enim sed ornare. Duis eget nulla ipsum. Vestibulum ac massa at lacus mollis lacinia. Quisque congue et nulla sed pretium. In dapibus molestie libero sed ornare.

In et mollis lacus. Vivamus suscipit venenatis felis, ac iaculis enim accumsan ac. Donec ultrices varius tellus ac lacinia. Proin quis pulvinar nisl. Mauris et mi quam. Curabitur a sagittis erat. Vivamus nec pellentesque ligula, a dapibus risus. Curabitur luctus massa in eleifend vehicula. Praesent tincidunt dui ut lectus laoreet venenatis. Aliquam erat volutpat. In id orci justo.

Pellentesque rutrum ultricies sodales. Suspendisse mattis cursus odio, quis consequat est iaculis aliquam. Cras a leo blandit eros tempor interdum. In vehicula sem erat. Quisque tincidunt lobortis vestibulum. Donec pulvinar lorem massa, ut molestie enim adipiscing sed. Maecenas dignissim egestas sem quis fermentum. Etiam interdum nisi id ultrices sollicitudin. Nam id facilisis metus. Sed vel dignissim lacus, at dapibus urna.

Fusce nec orci bibendum, faucibus nulla id, ullamcorper mi. Proin eu leo non turpis sodales tincidunt quis eu massa. Proin convallis purus sed dui tincidunt, ac imperdiet nisi dapibus. Vestibulum leo nunc, dapibus at mattis id, dignissim eget metus. Praesent vehicula bibendum viverra. Proin suscipit vehicula eros vel lobortis. Donec et mattis diam.

> This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.

> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
id sem consectetuer libero luctus adipiscing.



##Sample of ordered lists
#. Modularize code that requires initialization on jQuery's "Document Ready"[^1]

    ```javascript
        function library(module) {
          $(function() {
            if (module.init) {
              module.init();
            }
          });
          return module;
        }

        var myLibrary = library(function() {
           return {
             init: function() {
               /*implementation*/
             }
           };
        }());
    ```
    **Tags**: jQuery, JavaScript, module pattern

[^1]:[Patterns For Large-Scale JavaScript Application Architecture](/http://addyosmani.com/largescalejavascript/#modpattern)






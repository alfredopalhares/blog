---
layout : default
title : Blogging with jekyll
---

I have never been a blogger and the idea of having a bloated cms with a complicated server side code struture and even more unecessary database 
just to display static text that noone is not gona ever comment pleased me much.

Other option was to use static html, but that is so hard to maintain that is ridiculous.Then i found 
[jekyll](http://jekyllrb.com/) (*angels singing in background*)that is a blogging engine that allows me to blog in a simple 
[mardown syntax](http://en.wikipedia.org/wiki/Markdown) from my favorite editor, [vim](http://www.vim.org/). Well just this was a good motive to try it out. 

Here is one of the main resons:
{% highlight bash %}
while true;
  do
    echo "test of the highlight";
  done
{% endhighlight %}

Just like that, i can have code highlighted very easly, so damm simple. With the help of [pygments](http://pygments.org/) bash, C, C++, ruby, python and
and [huge amount](http://pygments.org/languages/) can show on the articles.

I found some problems with the making jekyll work properly, [albino](https://github.com/github/albino) was calling 
[pygments with the utf-8 endoding](http://doswa.com/2011/07/19/jekyll-syntax-highlighting-with-pygments-on-arch-linux.html) and i also 
updated both jekyll and [liquid](http://liquidmarkup.org/) from the source. I do not know if the problems are [Arch Linux](http://www.archlinux.org/) only.

I really like jeykyll and to be able to blog from vim. Now i hope i can find some time to blog my notes here.

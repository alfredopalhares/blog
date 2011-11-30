---
layout : default
title : masterkorp
---

{% for post in site.posts limit:10 %}
  <article class="blogpost">
    <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
    {{ post.content }}
  </article>
{% endfor %}

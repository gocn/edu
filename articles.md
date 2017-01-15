---
layout: 	 articles
title: 		 文章
permalink: /articles/
nav:       articles
---

<ul>
  {% for post in site.posts %}
    <li>
      <span>{{ post.date | date: "%b %-d, %Y" }}</span>
      <h2>
        <a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
      </h2>
    </li>
  {% endfor %}
</ul>

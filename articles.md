---
layout: 	page
title: 		"文章"
permalink: 	/articles/
---

<p>aka. posts</p>

<p>subscribe <a href="{{ "/feed.xml" | relative_url }}">via RSS</a></p>

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

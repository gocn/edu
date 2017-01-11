---
layout: 	 page
title: 		 "书籍"
permalink: /books/
nav:       "books"
---

{% for book in site.books %}


<a href="{{ book.url | prepend: site.baseurl }}">
  {{ book.title }}
</a>

<p>{{ book.description | truncate: 160 }}</p>

{% endfor %}

---
layout: 	 page
title: 		 "教程"
permalink: /tutorials/
nav:       "tutorials"
---

{% for tutorial in site.tutorials %}


<a href="{{ tutorial.url | prepend: site.baseurl }}">
  {{ tutorial.title }}
</a>

<p>{{ tutorial.description | truncate: 160 }}</p>

{% endfor %}
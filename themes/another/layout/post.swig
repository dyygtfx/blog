{% extends '_layout.swig' %}

{% block title %} {{ page.title }} {% endblock %}

{% block content %}

  <article class="post-article post-type-normal post" itemscope>

    <div class="post-body">

      <div class="content markdown-body">{{ page.content }}</div>

      {% include '_partials/post-sidebar.swig' %}

    </div>

    <footer class="post-footer">
      {% if page.tags and page.tags.length %}
        <div class="post-tags">
          {% for tag in page.tags %}
            <a href="/tags#{{ tag.name }}" rel="tag">#{{ tag.name }}</a>
          {% endfor %}
        </div>
      {% endif %}
    </footer>

  </article>

{% endblock %}

{% if page.bgimage %}
<header class="header" id="header" style="background: url({{ page.bgimage }}) center / cover">
{% else %}
<header class="header" id="header">
{% endif %}
  <div class="header-cont">
    <div class="text-area">
      {% if page.title %}
        <h1 class="title"> {{ page.title }} </h1>

        {% if page.type != "categories" && page.type != "tags" %}
        <div class="post-meta">
          <div class="post-time">
            {{ __('post.posted') }}
            <time  datetime="{{ moment(page.date).format() }}" content="{{ date(page.date, config.date_format) }}">
              {{ date(page.date, config.date_format) }}
            </time>
          </div>

          {% if page.categories and page.categories.length %}
            <div class="post-category" >
              {% for cat in page.categories %}
                <span>
                  <a href="/categories#{{ cat.name }}" itemprop="url" rel="index">
                    <span itemprop="name">{{ cat.name }}</span>
                  </a>
                </span>

                {% set cat_length = page.categories.length %}
                {% if cat_length > 1 and loop.index !== cat_length %}
                  {{ __('symbol.comma') }}
                {% endif %}

              {% endfor %}
            </div>
          {% endif %}

          {% if page.comments %}
            {% if (theme.duoshuo and theme.duoshuo.shortname) or theme.duoshuo_shortname %}
              <span class="post-comments-count">
                <a href="{{ url_for(page.path) }}#comments" itemprop="discussionUrl">
                  <span class="post-comments-count ds-thread-count" data-thread-key="{{ page.path }}" itemprop="commentsCount"></span>
                </a>
              </span>
            {% endif %}
          {% endif %}
        </div>
        {% endif %}
      {% else %}
        <h1 class="title"> <img src="http://7sbs9y.com1.z0.glb.clouddn.com/title.png"  alt="go7hic"/> </h1>
        <h3 class="description"> <img src="http://7sbs9y.com1.z0.glb.clouddn.com/subtitle.png"  alt="go7hic"/></h3>
      {% endif %}
    </div>
    <!-- Navigation -->
    {% if theme.menu %}
    <nav class="navigation clearfix" id="navigation">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <a class="nav-link" href="{{ url_for(path) }}" rel="section">
          {{ __('menu.' + itemName) }}
        </a>
      {% endfor %}
    </nav>
    {% endif %}
  </div>
  <div class="mask"></div>
</header>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

        {{ get_title() }}
    <title>{{ helper.title().get()|escape }}</title>
        {{ stylesheet_link('css/bootstrap.min.css') }}
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    {{ helper.meta().get('description') }}
    {{ helper.meta().get('keywords') }}
    {{ helper.meta().get('seo-manager') }}

    <link href="{{ url.path() }}favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">

    {{ helper.javascript('head') }}

</head>
<body{% if view.bodyClass %} class="{{ view.bodyClass }}"{% endif %}>

<div class="wrapper-in">
    <header>
        {{ partial('main/header') }}
    </header>

    {{ partial('main/menu') }}

<div class="container">
    {{ flash.output() }}
        {{ content() }}

        {% if seo_text is defined and seo_text_inner is not defined %}
            <div class="seo-text">
                {{ seo_text }}
            </div>
        {% endif %}

    </div>
    <footer>
        {{ partial('main/footer') }}
    </footer>
</div>
{% if registry.cms['PROFILER'] %}
    {{ helper.dbProfiler() }}
{% endif %}





{{ helper.javascript('body') }}


        {{ javascript_include('js/jquery.min.js') }}
        {{ javascript_include('js/bootstrap.min.js') }}
        {{ javascript_include('js/utils.js') }}
</body>
</html>
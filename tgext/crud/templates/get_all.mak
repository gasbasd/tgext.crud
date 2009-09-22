<%inherit file="app:templates.master"/>
<%namespace name="menu_items" file="tgext.crud.templates.menu_items"/>

<%def name="title()">
${tmpl_context.title} - ${model} Listing
</%def>
<%def name="header()">
${menu_items.menu_style()}
${parent.header()}
</%def>
<%def name="body_class()">tundra</%def>
  <div id="main_content">
    ${menu_items.menu_items()}
    <div style="float:left; width:80%">
      <h1 style="margin-top:1px;">${model} Listing</h1>
      <div style="margin:1ex 0; width:90%">
        <a href='new/'>New</a> ${model}
           % if tmpl_context.paginators:
            <span>${tmpl_context.paginators.value_list.pager()}>
           % endif
      </div>
     ${tmpl_context.widget(value=value_list, action='../'+model.lower()+'s.json', attrs=dict(style="height:200px; border:solid black 3px;")) |n}
    </div>
  </div>
</div>
<div style="clear:both;"/>
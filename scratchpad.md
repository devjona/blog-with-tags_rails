# Notes/ScratchPad:

## Sorting out conditional rendering

```ruby
<% if @article.comments.count > 0 %>
  <% @article.comments.each do |comment| %>
    <%= render @article.comments %>
  <% end %>
<% else %>
  <p>No comments yet...</p>
<% end %>
```

## Tags Table:

- id:
- name:string

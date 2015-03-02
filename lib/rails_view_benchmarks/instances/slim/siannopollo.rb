require 'rails_view_benchmarks/instances/base'

module RailsViewBenchmarks
  module Instances
    module Slim
      class Siannopollo < ::RailsViewBenchmarks::Instances::Base
        def configure!(c)
          c.main_view <<-EOS
doctype transitional
html[lang="en-US"]
  head
    title
      | Hampton Catlin Is Totally Awesome
    meta[content="text/html; charset=utf-8" http-equiv="Content-Type"]
  body
    .header
      |  Yes, ladies and gentileman. He is just that egotistical. Fantastic! This should be multi-line output The question is if this would translate! Ahah! <%= 1 + 9 + 8 + 2 %> <%# numbers should work and this should be ignored %>
    |  <% 120.times do |number| -%> <%= number %> <% end -%>
    #body
      | <%= " Quotes should be loved! Just like people!" %>
    |  Wow.
    p[data-code="<%= 1 + 2 %>"]
      |  <%= "Holy cow " + "multiline " + "tags! " + "A pipe (|) even!" %> <%= [1, 2, 3].collect { |n| "PipesIgnored|" }.join %> <%= [1, 2, 3].collect { |n| n.to_s }.join("|") %>
    |  <% bar = 17 %>
    .silent[data-foo="<%= bar %>"]
      |  <% foo = String.new foo << "this" foo << " shouldn't" foo << " evaluate" %> <%= foo + "but now it should!" %> <%# Woah crap a comment! %>
    ul.really.cool
      |  <% ('a'..'f').each do |a|%>
      li
        | <%= a %>
      |  <% end %>
    #combo.of_divs_with_underscore
      | <%= @should_eval = "with this text" %>
    |  <%= "foo".each_line do |line| nil end %>
    .footer
      strong.shout
        |  <%= "This is a really long ruby quote. It should be loved and wrapped because its more than 50 characters. This value may change in the future and this test may look stupid.\\n" + " So, I'm just making it *really* long. God, I hope this works" %>
EOS
        end
      end
    end
  end
end

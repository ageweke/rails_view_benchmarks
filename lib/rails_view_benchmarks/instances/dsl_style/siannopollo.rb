require 'rails_view_benchmarks/instances/base'
require 'rails_view_benchmarks/instances/dsl_style/common'

module RailsViewBenchmarks
  module Instances
    module DslStyle
      class Siannopollo < ::RailsViewBenchmarks::Instances::Base
        include ::RailsViewBenchmarks::Instances::DslStyle::Common

        def configure!(c)
          c.main_view <<-EOS
#{module_declaration_and_explicit_requires_if_needed}

class Views::Benchmark::Index < Views::Base
  def content
    rawtext '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'
    html(:lang => "en-US") {
      head {
        title("Hampton Catlin Is Totally Awesome")
        meta(:content => "text/html; charset=utf-8", "http-equiv" => "Content-Type")
      }

      body {
        comment "You're In my house now!"

        div(:class => "header") {
          text %{Yes, ladies and gentileman. He is just that egotistical.
      Fantastic! This should be multi-line output
      The question is if this would translate! Ahah!
      }
          text(1 + 9 + 8 + 2)
          # numbers should work and this should be ignored
        }

        120.times do |number|
          text number
        end

        div(" Quotes should be loved! Just like people!", :id => "body")
        text "Wow."
        p(:'data-code' => (1 + 2)) {
          text("Holy cow        " +
            "multiline       " +
            "tags!           " +
            "A pipe (|) even!")
          text " "
          text([1, 2, 3].collect { |n| "PipesIgnored|" }.join)
          text " "
          text([1, 2, 3].collect { |n|
            n.to_s
          }.join("|"))
        }

        bar = 17
        div(:class => "silent", :'data-foo' => bar) {
          foo = String.new
          foo << "this"
          foo << " shouldn't"
          foo << " evaluate"
          text " "
          text(foo + "but now it should!")
          # Woah crap a comment!
        }

        ul(:class => "really cool") {
          ('a'..'f').each do |a|
            li(a)
          end
        }
        div(:class => :of_divs_with_underscore, :id => :combo) {
          text(@should_eval = "with this text")
        }
        text("foo".each_line do |line|
          nil
        end)

        div(:class => "footer") {
          strong(:class => "shout") {
            text("This is a really long ruby quote. It should be loved and wrapped because its more than 50 characters. This value may change in the future and this test may look stupid.\n" +
              "        So, I'm just making it *really* long. God, I hope this works")
          }
        }
      }
    }
  end
end
EOS
        end
      end
    end
  end
end

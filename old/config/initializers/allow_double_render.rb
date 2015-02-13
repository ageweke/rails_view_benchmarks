::ActionController::Rendering.module_eval do
  def render(*args)
    super
    self.content_type ||= Mime[lookup_context.rendered_format].to_s
    response_body
  end
end

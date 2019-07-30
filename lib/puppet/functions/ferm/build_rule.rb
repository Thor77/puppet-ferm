Puppet::Functions.create_function(:'ferm::build_rule') do
  dispatch :build_rule do
    param 'Hash', :rule
    param 'Hash', :rule_defaults
    optional_param 'String', :comment
    return_type 'String'
  end

  def render_kv(key, value)
    value = value.is_a?(Array) ? "(#{value.map(&:to_s).join(' ')})" : value
    "#{key} #{value}"
  end

  def build_rule(rule, rule_defaults, comment=nil)
    r = rule_defaults.merge(rule)
    key_values = [
      render_kv('domain', r.delete('domain')),
      render_kv('table', r.delete('table')),
      render_kv('chain', r.delete('chain'))
    ]
    if r.key? 'mod'
      key_values << render_kv('mod', r.delete('mod'))
    end
    if r.key? 'proto'
      key_values << render_kv('proto', r.delete('proto'))
    end
    if !r.key? 'policy' and !comment.nil?
      key_values << "mod comment comment \"#{comment}\""
    end
    action = r.delete('action')
    r.each do |key, value|
      key_values << render_kv(key, value)
    end
    unless action.nil? or action.empty?
      key_values << action
    end
    key_values.join(' ') + ';'
  end
end

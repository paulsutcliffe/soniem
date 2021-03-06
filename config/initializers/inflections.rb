# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
  inflect.irregular 'noticia', 'noticias'
  inflect.irregular 'ubicacion', 'ubicaciones'
  inflect.irregular 'tema', 'temas'
  inflect.irregular 'imagen', 'imagenes'
  inflect.irregular 'fotografia', 'fotografias'
  inflect.irregular 'informacion', 'informaciones'
  inflect.irregular 'pregunta', 'preguntas'
  inflect.irregular 'tema_no_registrado', 'temas_no_registrados'
#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

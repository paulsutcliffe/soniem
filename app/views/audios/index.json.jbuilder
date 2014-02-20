json.array!(@audios) do |audio|
  json.extract! audio, :id, :titulo, :audio
  json.url audio_url(audio, format: :json)
end

class Download

  def command(args)
    bucket      = args[:bucket]
    object_name = args[:object_name]
    file_name   = args[:file_name]
    force       = args[:force] ? '--force' : ''
    options   = args[:options]

    object_url = "s3://#{File.join bucket, object_name}"

    cmd =  "s3cmd #{options} #{force} "
    cmd << "get #{object_url} #{file_name}"
  end

end

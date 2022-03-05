# https://github.com/MSFPT/JsonBase

require 'json';

class JsonBase

  def initialize file

    @file = file

    if @file.split('.')[-1]!='json'
      
      puts "[Errno 2] No such file or directory: '"+@file+"'"
    
      exit true

    end
    
    begin
    
      File.read @file;
    
    rescue Errno::ENOENT => e
    
      File.open(@file, 'w') { |file| file.write('') }
    
    end

  end

  def get

    file = File.read @file
    
    begin 
      return JSON.parse file
    rescue JSON::ParserError => e
      return {}
    end

  end

  def clear

    File.open(@file, 'w') { |file| file.write('') }
  
  end

  def commit data

    data = JSON.generate data

    File.open(@file, 'w') { |file| file.write(data) }

    return nil

  end

end
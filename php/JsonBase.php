<?php 

  /* https://github.com/MSFPT/JsonBase */

  header('Access-Control-Allow-Origin: *');

  class JsonBase{

    public $file_db;

    public function __construct(string $file){
      
      if (!file_exists($file)) { $log = fopen($file,'w+');fwrite($log, '');fclose($log); }

      $this->file_db = $file;
    
    }

    public function get(){
    
      return json_decode(file_get_contents($this->file_db),true) ;
    
    }
    
    public function commit(Array $data){
    
      $myfile = fopen($this->file_db, "w") or die("Unable to open file!");
    
      fwrite($myfile, json_encode($data));
    
      fclose($myfile);
    
    }

    public function clear(){
    
      $this.commit('') ;
    
    }
  
  }

?>

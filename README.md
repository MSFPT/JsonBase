# JsonBase

[![Python](https://img.shields.io/badge/python-3-blue)](https://python.org)
[![Ruby](https://img.shields.io/badge/ruby-2-red)](https://ruby-lang.org)
[![PHP](https://img.shields.io/badge/php-8-purple)](https://php.net)
![Level](https://img.shields.io/badge/Level-Easy-cyan)

Jason's tiny database

## Clone from GitHub
```bash
git clone https://github.com/MSFPT/JsonBase
```

<br>

### Types Run

<br>

#### python

<br>

```python
from JsonBase.python import JsonBase

DATABASE = JsonBase('./JsonBase/db.json')

# * GET DATA AND COMMIT *
@DATABASE.get
def GetData(data):
  data['github'] = 'https://github.com/MSFPT/JsonBase'
  DATABASE.commit()

# OR

 data = DATABASE.get()
 data['github'] = 'https://github.com/MSFPT/JsonBase'
 DATABASE.commit()

# * CLEAR a DATABASE *
DATABASE.clear()

# * WRITE in DATABASE *
DATABASE.write(db)

```

<br>

#### Ruby

<br>

```ruby
from JsonBase.python import JsonBase

require './JsonBase/ruby/JsonBase.rb'

$db = JsonBase. new './JsonBase/db.json'

# * GET DATA AND COMMIT *
data = $db.get
data['name'] = "Ангел"
$db.commit data

# * CLEAR a DATABASE *
$db.clear

# * WRITE in DATABASE *
$db.commit {name: 'Люцифер'}

```


<br>

#### PHP

<br>

```php
<?php

  require('./JsonBase/php/JsonBase.php');

  $db = new JsonBase('./JsonBase/db.json');
  
  # * GET DATA AND COMMIT *

  $data = $db->get();
  $data['name'] = 'Ангел';
  $db->commit($data);
  
  # * CLEAR a DATABASE *
  $db->clear();
  
  # * WRITE in DATABASE *
  $db->commit(array("name"=>"Люцифер"));

?>
```

<br>
<br>

<center>
 I also write in other langs ​​soon :)
<center>
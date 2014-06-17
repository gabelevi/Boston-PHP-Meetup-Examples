<?php

class Mailbox {
  private $data = '';

  public function send($data) {
    $this->data = $data;
  }

  public function fetch() {
    return $this->data;
  }
}

function test() {
  $mb = new Mailbox();
  $mb->send('hello');
  $msg = $mb->fetch();
  a_php_function();
  return $msg;
}

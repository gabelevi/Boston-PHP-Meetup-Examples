<?php

class SomeClassWithBadCode {
    public function foo(SomeClass $x = null) {
        return $x->bar();
    }

    public function bar() {
        return 4;
    }
}

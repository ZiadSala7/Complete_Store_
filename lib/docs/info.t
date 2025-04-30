============================
Singleton_design_pattern => :
============================
    - to make only one 'instance' from the class in memory
    - class MyObject {
        MyObject(){}
        static final instance = MyObject();
    }
    - in main(){
        MyObject object = MyObject.instance;
    }
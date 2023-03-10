script {
    use Std::Debug::print;
    use Std::Vector;
    use 0x2::Coin;
    //use Std::Signer;

    fun main() {

        let coin = Coin::mint(100);
        print(&Coin::modify_value(&mut coin));
        print(&Coin::value(&coin));
        Coin::burn(coin);   

        let v = Vector::empty<u64>();
        Vector::push_back(&mut v, 5);
        Vector::push_back(&mut v, 6);
        print(&v);
        assert!(*Vector::borrow(&v, 0) == 5, 42);
        assert!(*Vector::borrow(&v, 1) == 6, 42);
        assert!(Vector::pop_back(&mut v) == 6, 42);
        assert!(Vector::pop_back(&mut v) == 5, 42);
    }
}
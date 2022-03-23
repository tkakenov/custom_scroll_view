class User {
  int id;
  String name;
  String position;
  String email;
  String image;
  String phone;
  String birthday;

  User({
    required this.id,
    required this.name,
    required this.position,
    required this.email,
    required this.image,
    required this.phone,
    required this.birthday,
  });

  static List<User> getUserList() {
    return [
      User(
        name: "Артыкбаев Расул Саткынович",
        position: "Директор",
        email: "email1@mail.ru",
        image: "assets/images/avatar1.png",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 1,
      ),
      User(
        name: "Жыпаркулов Мырзабек Жыпаркулович",
        position: "Исполнительный диретор",
        email: "email2@mail.ru",
        image: "assets/images/avatar2.png",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 2,
      ),
      User(
        name: "Алишек Алихан Мурзакулович",
        position: "Генеральный диреткор",
        email: "email3@mail.ru",
        image: "assets/images/avatar3.png",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 3,
      ),
      User(
        name: "Иванов Иван Иванович",
        position: "Бухгалтер",
        email: "email4@mail.ru",
        image: "assets/images/avatar5.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 5,
      ),
      User(
        name: "Степанов Сергей Викторович",
        position: "Стажер",
        email: "email5@mail.ru",
        image: "assets/images/avatar6.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 6,
      ),
      User(
        name: "Брюс Вездесущий",
        position: "Охранник",
        email: "email6@mail.ru",
        image: "assets/images/avatar7.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 7,
      ),
      User(
        name: "Бокало Александр",
        position: "Юрист",
        email: "email7@mail.ru",
        image: "assets/images/avatar8.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 8,
      ),
      User(
        name: "Семенов Семен Сеченович",
        position: "Архитектор",
        email: "email8@mail.ru",
        image: "assets/images/avatar9.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 9,
      ),
      User(
        name: "Михайлов Сергей Сергеевич",
        position: "Водитель",
        email: "email9@mail.ru",
        image: "assets/images/avatar10.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 10,
      ),
      User(
        name: "Асанов Анвар Аскарбекович",
        position: "Машинист",
        email: "email10@mail.ru",
        image: "assets/images/avatar11.jpeg",
        phone: "+996 555 353541",
        birthday: "12.02.1998",
        id: 11,
      )
    ];
  }
}

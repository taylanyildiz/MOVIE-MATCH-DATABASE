import 'package:movie_match_home/models/models.dart';
import 'package:movie_match_home/src/movie_img.dart';

// Current User
var currentUser = User(
  user_id: 0,
  user_realname: 'Taylan',
  user_name: 'tylanyildz',
  user_bio: 'Film zevklerimiz uyuşsun yeter',
  user_mail: 'taylanyildz@outlook.com',
  user_birthdate: '05/08/1995',
  user_photo_1: moviesList[0].imgUrl,
  user_photo_2: moviesList[0].imgUrl,
  user_photo_3: moviesList[0].imgUrl,
  connection: [],
);

// User List
final listUser = <User>[
  currentUser,
  User(
    user_id: 1,
    user_realname: 'Yagmur',
    user_name: 'sue',
    user_bio: 'Film zevklerimiz uyuşsun yeter',
    user_mail: 'yagmursue@gmail.com',
    user_birthdate: '05/08/2002',
    user_photo_1: moviesList[0].imgUrl,
    user_photo_2: moviesList[0].imgUrl,
    user_photo_3: moviesList[0].imgUrl,
  ),
  User(
    user_id: 2,
    user_realname: 'Baris',
    user_name: 'dofdof',
    user_bio: 'Film zevklerimiz uyuşsun yeter',
    user_mail: 'baris_fevzi@outlook.com',
    user_birthdate: '05/08/1999',
    user_photo_1: moviesList[0].imgUrl,
    user_photo_2: moviesList[0].imgUrl,
    user_photo_3: moviesList[0].imgUrl,
  ),
  User(
    user_id: 3,
    user_realname: 'Elif',
    user_name: 'elifsagliik',
    user_bio: 'Film zevklerimiz uyuşsun yeter',
    user_mail: 'saglikelif@outlook.com',
    user_birthdate: '05/08/1997',
    user_photo_1: moviesList[0].imgUrl,
    user_photo_2: moviesList[0].imgUrl,
    user_photo_3: moviesList[0].imgUrl,
  ),
  User(
    user_id: 4,
    user_realname: 'Emir',
    user_name: 'akturkemr',
    user_bio: 'Film zevklerimiz uyuşsun yeter',
    user_mail: 'emir_aktrk@outlook.com',
    user_birthdate: '05/08/2002',
    user_photo_1: moviesList[0].imgUrl,
    user_photo_2: moviesList[0].imgUrl,
    user_photo_3: moviesList[0].imgUrl,
  ),
  User(
    user_id: 5,
    user_realname: 'Veysel',
    user_name: 'matyar',
    user_bio: 'Film zevklerimiz uyuşsun yeter',
    user_mail: 'matyarvsyl@outlook.com',
    user_birthdate: '05/08/1999',
    user_photo_1: moviesList[0].imgUrl,
    user_photo_2: moviesList[0].imgUrl,
    user_photo_3: moviesList[0].imgUrl,
  ),
  User(
    user_id: 6,
    user_realname: 'Can',
    user_name: 'cnozn',
    user_bio: 'Film zevklerimiz uyuşsun yeter',
    user_mail: 'cnozn@outlook.com',
    user_birthdate: '05/08/2002',
    user_photo_1: moviesList[0].imgUrl,
    user_photo_2: moviesList[0].imgUrl,
    user_photo_3: moviesList[0].imgUrl,
  ),
  User(
    user_id: 7,
    user_realname: 'Ozge',
    user_name: 'ozgdmir',
    user_bio: 'Film zevklerimiz uyuşsun yeter',
    user_mail: 'ozgedmir14@outlook.com',
    user_birthdate: '05/08/1996',
    user_photo_1: 'assets/images/account/images/profile_1',
    user_photo_2: 'assets/images/account/images/profile_1',
    user_photo_3: 'assets/images/account/images/profile_1',
  ),
];

// Films List
final listFilm = <Film>[
  Film(
    film_id: 0,
    film_name: 'Anatolia',
    film_imgUrl: moviesList[0].imgUrl,
    film_about: 'Anatolia',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[4],
      listUser[2],
      listUser[0],
      listUser[3],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[0],
    ],
  ),
  Film(
    film_id: 1,
    film_name: 'Bird Box',
    film_imgUrl: moviesList[1].imgUrl,
    film_about: 'Bird Box',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[5],
      listUser[4],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[4],
    ],
  ),
  Film(
    film_id: 2,
    film_name: 'Brigth',
    film_imgUrl: moviesList[2].imgUrl,
    film_about: 'Birght',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[0],
      listUser[5],
    ],
    comment: [
      listComments[3],
      listComments[4],
    ],
  ),
  Film(
    film_id: 3,
    film_name: 'The Dig',
    film_imgUrl: moviesList[3].imgUrl,
    film_about: 'The Dig',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[3],
    ],
    comment: [
      listComments[3],
      listComments[4],
    ],
  ),
  Film(
    film_id: 4,
    film_name: 'The Django',
    film_imgUrl: moviesList[4].imgUrl,
    film_about: 'The Django',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[6],
      listUser[4],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[4],
    ],
  ),
  Film(
    film_id: 5,
    film_name: 'God Father',
    film_imgUrl: moviesList[5].imgUrl,
    film_about: 'God Father',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[5],
      listUser[1],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[4],
    ],
  ),
  Film(
    film_id: 6,
    film_name: 'Great Hack',
    film_imgUrl: moviesList[6].imgUrl,
    film_about: 'Great Hack',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [],
    comment: [
      listComments[3],
      listComments[6],
      listComments[4],
    ],
  ),
  Film(
    film_id: 7,
    film_name: 'Hateful Eight',
    film_imgUrl: moviesList[7].imgUrl,
    film_about: 'Hateul Eight',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[4],
      listUser[0],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[0],
    ],
  ),
  Film(
    film_id: 8,
    film_name: 'Inception',
    film_imgUrl: moviesList[8].imgUrl,
    film_about: 'Inception',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[1],
    ],
    comment: [
      listComments[3],
      listComments[4],
    ],
  ),
  Film(
    film_id: 9,
    film_name: 'Ivory',
    film_imgUrl: moviesList[9].imgUrl,
    film_about: 'Ivory',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[0],
      listUser[5],
      listUser[4],
    ],
    comment: [
      listComments[4],
      listComments[5],
      listComments[0],
    ],
  ),
  Film(
    film_id: 10,
    film_name: 'Jumanji',
    film_imgUrl: moviesList[10].imgUrl,
    film_about: 'Jumanji',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[0],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[4],
    ],
  ),
  Film(
    film_id: 11,
    film_name: 'The King',
    film_imgUrl: moviesList[11].imgUrl,
    film_about: 'The King',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[4],
      listUser[1],
    ],
    comment: [
      listComments[3],
      listComments[4],
    ],
  ),
  Film(
    film_id: 12,
    film_name: 'Okja',
    film_imgUrl: moviesList[12].imgUrl,
    film_about: 'Okja',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[0],
      listUser[5],
      listUser[4],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[4],
    ],
  ),
  Film(
    film_id: 13,
    film_name: 'The Pianist',
    film_imgUrl: moviesList[13].imgUrl,
    film_about: 'The Pianist',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[0],
      listUser[1],
      listUser[2],
      listUser[5],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[4],
    ],
  ),
  Film(
    film_id: 14,
    film_name: 'Social Network',
    film_imgUrl: moviesList[14].imgUrl,
    film_about: 'Social Network',
    film_director: 'film_director',
    film_cast: 'film_cast',
    user: [
      listUser[4],
      listUser[1],
      listUser[0],
    ],
    comment: [
      listComments[3],
      listComments[6],
      listComments[4],
    ],
  ),
];

// Comments
final listComments = <Comment>[
  Comment(
    comment_id: 0,
    comment_text: 'comment_text',
    user: listUser[0],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 2,
    comment_text: 'comment_text',
    user: listUser[2],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 3,
    comment_text: 'comment_text',
    user: listUser[3],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 4,
    comment_text: 'comment_text',
    user: listUser[5],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 5,
    comment_text: 'comment_text',
    user: listUser[7],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 6,
    comment_text: 'comment_text',
    user: listUser[6],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 7,
    comment_text: 'comment_text',
    user: listUser[6],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 8,
    comment_text: 'comment_text',
    user: listUser[1],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 9,
    comment_text: 'comment_text',
    user: listUser[1],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 11,
    comment_text: 'comment_text',
    user: listUser[2],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 12,
    comment_text: 'comment_text',
    user: listUser[4],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 13,
    comment_text: 'comment_text',
    user: listUser[4],
    comment_time: 'today 20:12',
  ),
  Comment(
    comment_id: 14,
    comment_text: 'comment_text',
    user: listUser[3],
    comment_time: 'today 20:12',
  ),
];

final listLike = <Like>[
  Like(
    like_id: 0,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[0],
  ),
  Like(
    like_id: 1,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[1],
  ),
  Like(
    like_id: 2,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[2],
  ),
  Like(
    like_id: 3,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[3],
  ),
  Like(
    like_id: 4,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[4],
  ),
  Like(
    like_id: 5,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[5],
  ),
  Like(
    like_id: 6,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[6],
  ),
  Like(
    like_id: 7,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[7],
  ),
  Like(
    like_id: 8,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[0],
  ),
  Like(
    like_id: 9,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[1],
  ),
  Like(
    like_id: 10,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[2],
  ),
  Like(
    like_id: 11,
    like_active: true,
    like_type: LikeType.comment,
    like_time: 'like_time',
    user: listUser[3],
  ),
];

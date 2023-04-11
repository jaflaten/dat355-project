class Article {
  id;
  title;
  content;
  published;
  lastEdited;
  page;
  * -- 1 User authoredBy;
}

class Attachment {
  id;
  name;
  type;
  link;
  * -- 1 Song song;
}

class Event {
  id;
  name;
  date;
  location;
  programmeLink;
  invitationLink;
  notePublic;
  notePrivate;
  timeBegin;
  timeMeet;
  * -- * User eventUsers;
  * -- * Song songs;
}

class Messages {
  id;
  locale;
  page;
  messageId;
  messageText;
}

class Role {
  id;
  name;
  * -- * User roleUsers;
}

class Song {
  id;
  number;
  name;
  author;
  1 -- * Attachment attachments;
  * -- * Event events;
}

class User {
  id;
  email;
  password;
  isVerified;
  triVoice;
  quadroVoice;
  birthday;
  note;
  phone;
  name;
  surname;
  prevSurname;
  lastEdited;
  * -- * Role userRoles;
  1 -- * Article authoredArticles;
  * -- * Event userEvents;
}

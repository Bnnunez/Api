# README

Se utilizó información de dos partes:
1. youtube. Para realizar un Api Rest
  https://www.youtube.com/watch?v=QojnRc7SS9o


2. stackoverflow. Para el manejo de errores 404
  #Obtenido de: https://stackoverflow.com/questions/23332320/how-can-i-return-a-404-json-format-in-rails-4


Url del sitio con deploy en heroku:
https://protected-beach-95857.herokuapp.com

Modos de uso:

1) Lista de noticias
  https://protected-beach-95857.herokuapp.com/posts

  **** Admite GET y POST ****

2) Noticia particular
  https://protected-beach-95857.herokuapp.com/posts/1

  En este caso la noticia 1.
  **** Admite GET, PATCH, DELETE y PUT ****

3) Comentarios de la noticias
  https://protected-beach-95857.herokuapp.com/posts/1/comments

  En este caso, los comentarios de la noticia 1.
  **** Admite GET y POST ****

4) Comentario particular

  https://protected-beach-95857.herokuapp.com/posts/1/comments/3
  En este caso, el comentario de la noticia 1. Que corresponde al tercero en la base de datos.

  **** Admite GET, PATCH, DELETE y PUT ****

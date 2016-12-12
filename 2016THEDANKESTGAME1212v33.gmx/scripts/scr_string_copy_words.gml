///scr_string_copy_words(string, index, count);
var stri = argument0;
var index = argument1;
var count = ceil(argument2);
// check if its  aspace or not a space ( keep adding if not in the middle of the word)
var char = string_char_at(stri, count);
while (char != " " and char != "") {
    count++;
    char = string_char_at(stri, count);
}

var return_stri = string_copy(stri, index, count);
return return_stri;



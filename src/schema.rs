// @generated automatically by Diesel CLI.

diesel::table! {
    categories (category) {
        category -> Varchar,
    }
}

diesel::table! {
    multiple_answers (id) {
        id -> Integer,
        question -> Integer,
        answer -> Text,
    }
}

diesel::table! {
    question_types (question_type) {
        question_type -> Varchar,
    }
}

diesel::table! {
    questions (id) {
        id -> Integer,
        category -> Varchar,
        question_type -> Varchar,
        key_command -> Varchar,
        discord -> Tinyint,
        question -> Text,
    }
}

diesel::table! {
    questions_data (id) {
        id -> Unsigned<Bigint>,
        question -> Integer,
        answer -> Text,
    }
}

diesel::joinable!(multiple_answers -> questions (question));
diesel::joinable!(questions -> categories (category));
diesel::joinable!(questions -> question_types (question_type));
diesel::joinable!(questions_data -> questions (question));

diesel::allow_tables_to_appear_in_same_query!(
    categories,
    multiple_answers,
    question_types,
    questions,
    questions_data,
);

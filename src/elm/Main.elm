module Main exposing (..)

import Html exposing (..)
import Html.App as Html


-- APP


main : Program Never
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    { posts : List Post
    }


type alias Post =
    String


model : Model
model =
    { posts =
        [ "A first post"
        , "A second post"
        , "And a third one"
        ]
    }



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model



-- VIEW


view : Model -> Html Msg
view model =
    postsView model.posts


postsView : List Post -> Html Msg
postsView posts =
    ul []
        (List.map postView posts)


postView : Post -> Html Msg
postView post =
    li []
        [ text post ]

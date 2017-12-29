module Github.Object.HeadRefDeletedEvent exposing (..)

import Github.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.HeadRefDeletedEvent
selection constructor =
    Object.object constructor


actor : SelectionSet actor Github.Object.Actor -> FieldDecoder (Maybe actor) Github.Object.HeadRefDeletedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


createdAt : FieldDecoder String Github.Object.HeadRefDeletedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


headRef : SelectionSet headRef Github.Object.Ref -> FieldDecoder (Maybe headRef) Github.Object.HeadRefDeletedEvent
headRef object =
    Object.selectionFieldDecoder "headRef" [] object (identity >> Decode.maybe)


headRefName : FieldDecoder String Github.Object.HeadRefDeletedEvent
headRefName =
    Object.fieldDecoder "headRefName" [] Decode.string


id : FieldDecoder String Github.Object.HeadRefDeletedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


pullRequest : SelectionSet pullRequest Github.Object.PullRequest -> FieldDecoder pullRequest Github.Object.HeadRefDeletedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity

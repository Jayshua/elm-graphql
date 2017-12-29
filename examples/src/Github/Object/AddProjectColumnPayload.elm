module Github.Object.AddProjectColumnPayload exposing (..)

import Github.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddProjectColumnPayload
selection constructor =
    Object.object constructor


clientMutationId : FieldDecoder (Maybe String) Github.Object.AddProjectColumnPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.maybe)


columnEdge : SelectionSet columnEdge Github.Object.ProjectColumnEdge -> FieldDecoder columnEdge Github.Object.AddProjectColumnPayload
columnEdge object =
    Object.selectionFieldDecoder "columnEdge" [] object identity


project : SelectionSet project Github.Object.Project -> FieldDecoder project Github.Object.AddProjectColumnPayload
project object =
    Object.selectionFieldDecoder "project" [] object identity

module Github.Object.MilestoneConnection exposing (..)

import Github.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.MilestoneConnection
selection constructor =
    Object.object constructor


edges : SelectionSet edges Github.Object.MilestoneEdge -> FieldDecoder (Maybe (List (Maybe edges))) Github.Object.MilestoneConnection
edges object =
    Object.selectionFieldDecoder "edges" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


nodes : SelectionSet nodes Github.Object.Milestone -> FieldDecoder (Maybe (List (Maybe nodes))) Github.Object.MilestoneConnection
nodes object =
    Object.selectionFieldDecoder "nodes" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


pageInfo : SelectionSet pageInfo Github.Object.PageInfo -> FieldDecoder pageInfo Github.Object.MilestoneConnection
pageInfo object =
    Object.selectionFieldDecoder "pageInfo" [] object identity


totalCount : FieldDecoder Int Github.Object.MilestoneConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int

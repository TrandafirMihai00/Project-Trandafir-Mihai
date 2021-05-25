
xquery version "1.0";
declare namespace h = "http://www.w3.org/1999/xhtml";

<h:ul>
{ for $game as element(game) in //game
  let $cs := $game/copies-sold
  let $price := $game/price
  let $title as xs:string := string ($game/title)
  where $cs > 100000 
  order by $cs descending
  return <h:li> { $title," - ", $cs, " copies sold with ", $price, " euro/unit"} </h:li>
}
</h:ul> 
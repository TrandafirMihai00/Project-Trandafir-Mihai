xquery version "1.0";
declare namespace h = "http://www.w3.org/1999/xhtml";

<h:ul>
{ for $game as element(game) in //game
  let $price := $game/price
  let $title as xs:string := string ($game/title)
  where $price >20 
  order by $price descending
  return <h:li> { $title," - ", $price } </h:li>
}
</h:ul> 
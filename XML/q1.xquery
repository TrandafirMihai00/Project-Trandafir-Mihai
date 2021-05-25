xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
<h:ul>
{
for $x in doc("Games.xml")/games/game
where $x/price<30
order by $x/price
return<h:li>{data($x/price)} euro - {data($x/title)}</h:li>
}
</h:ul>
#Ikkinz Raid #4: Chambers of Destruction
sub EVENT_SPAWN {
  	$x = $npc->GetX();
   	$y = $npc->GetY();
	quest::set_proximity($x - 10, $x + 10, $y - 10, $y + 10);
}

sub EVENT_ENTER {
$InInstanceIkky7 = quest::GetInstanceID("ikkinz",6);
  
    if($InInstanceIkky7 > 0){
		quest::MovePCInstance(294,$InInstanceIkky7,-157,27,-2); # Zone: ikkinz
	} else {
		$client->Message(13, "You are not a part of an instance!");
	}     
}

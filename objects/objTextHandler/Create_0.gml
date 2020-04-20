/// @description Insert description here
// You can write your code in this editor
scrInitGlobals();

consoleText = ds_list_create();
textQueue   = ds_queue_create();
timerQueue  = ds_queue_create();

scriptQueue      = ds_queue_create();
scriptTimerQueue = ds_queue_create();

textFadeInCounter = 0;
timeToFadeIn = 90;

fadingIn = false;

nextText = "";
nextTextCounter = 0;
timeToNextText = undefined;

nextScript = undefined;
nextScriptCounter = 0;
timeToNextScript = undefined;

scrWriteTextDelayed("Your eyes open slowly, the lids practically frozen together.", 30);

scrWriteTextDelayed("Beside you, the creature hasn't moved all night. It still stands beside you, looking down at your sleeping body.", 180);

scrWriteTextDelayed("The thing looks like a woman -- almost. The sheen of its skin is blue. It hardly breathes, and doesn't even seem to notice the cold. It stares at you like you're its pet, some sense of compassion behind its blue eyes.", 180);

scrWriteTextDelayed("The fire breathes its last breath and you wonder how much longer you can last. The creature crouches down and nudges you, like it wants you to get up.", 240);

scrRunScriptDelayed(scrIntroComplete, 660);
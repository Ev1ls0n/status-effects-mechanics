class_name PlayerComponent extends Node

## The base class for player component classes.
## Contains a field with a reference to the player character object.

@onready var player : PlayerCharacter = get_owner() ## Reference to the player object that owns the component.

extends "res://singletons/item_service.gd"


func get_reroll_price(wave: int, reroll_count: int, player_index: int) -> Array:
    # Apply the same rule to shop and level-up reward rerolls.
    if wave < 4 or reroll_count == 0:
        return [0, 0]

    # Keep the current game's pricing rules and stat keys for paid rerolls.
    return .get_reroll_price(wave, reroll_count, player_index)

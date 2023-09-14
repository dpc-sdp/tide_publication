<?php

namespace Drupal\tide_publication;

use Drupal\taxonomy\Entity\Vocabulary;

/**
 * Tide publication modules operations.
 */
class TidePublicationOperation {

  /**
   * Creates a new vocabulary.
   *
   * @param string $vocabulary
   *   The new vocabulary.
   */
  public function createVocabulary(string $vocabulary) {
    $vocabulary = Vocabulary::create([
      'vid' => $vocabulary,
      'description' => '',
      'name' => ucfirst($vocabulary),
    ]);
    $vocabulary->save();
  }

}

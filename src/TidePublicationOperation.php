<?php

namespace Drupal\tide_publication;

use Drupal\Core\Config\Config;
use Drupal\field\Entity\FieldConfig;
use Drupal\taxonomy\Entity\Vocabulary;

/**
 * Tide publication modules operations.
 */
class TidePublicationOperation {

  /**
   * The bundle name.
   */
  const BUNDLE = 'publication';

  /**
   * The entity reference field type.
   */
  const ENTITY_REFERENCE_FIELD_TYPE = 'entity_reference';

  /**
   * The publication authors field name.
   */
  const PUBLICATION_AUTHORS_FIELD_NAME = 'field_publication_authors';

  /**
   * The publication authors field description.
   */
  const PUBLICATION_AUTHORS_FIELD_DESCRIPTION = 'Start typing to choose one publication author.';

  /**
   * The publication authors field storage.
   */
  const PUBLICATION_AUTHORS_FIELD_STORAGE = 'field.storage.node.field_publication_authors';

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

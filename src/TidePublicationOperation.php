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
   * Update field_publication_authors to use new vocabulary.
   *
   * @param \Drupal\Core\Config\Config $config
   *   The config object.
   * @param string $vocabulary
   *   The new vocabulary.
   */
  public function updateFieldPublicationAuthorsVocabulary(Config $config, string $vocabulary) {
    // Creates vocabulary if doesn't exist.
    $vocabularies = Vocabulary::loadMultiple();
    if (!isset($vocabularies[$vocabulary])) {
      $this->createVocabulary($vocabulary);
    }

    $field = FieldConfig::loadByName('node', self::BUNDLE, self::PUBLICATION_AUTHORS_FIELD_NAME);
    $new_field = $field->toArray();
    $new_field['field_type'] = 'entity_reference';
    $new_field['description'] = self::PUBLICATION_AUTHORS_FIELD_DESCRIPTION;
    $new_field['dependencies'] = [
      'config' => [
        'field.storage.' . $config->get('id'),
        'node.type.' . self::BUNDLE,
        'taxonomy.vocabulary.' . $vocabulary,
      ],
    ];
    $new_field['settings'] = [
      'handler_settings' => [
        'target_bundles' => [
          'department' => $vocabulary,
        ],
      ],
    ];
    $new_field = FieldConfig::create($new_field);
    $new_field->original = $field;
    $new_field->enforceIsNew(FALSE);
    $new_field->save();
  }

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

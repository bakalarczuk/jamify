<?php
// lib/html_sanitize.php

/**
 * Oczyszcza HTML wyjściowy z edytora WYSIWYG.
 * Pozwala tylko na wybrane tagi i atrybut href w <a>.
 *
 * @param string $rawHtml surowy HTML z formularza
 * @return string oczyszczony, bezpieczny HTML
 */
function sanitize_description(string $rawHtml): string
{
    // 1) dozwolone tagi
    $allowed = '<p><br><b><strong><i><em><u><ul><ol><li><a><img>';
    // usuń wszystkie tagi poza dozwolonymi
    $clean = strip_tags($rawHtml, $allowed);

    // 2) dodatkowe czyszczenie atrybutów w <a>
    $clean = preg_replace_callback(
        '#<a\s+([^>]+)>#i',
        function(array $m) {
            $attrs = $m[1];
            $href  = '';
            // wyciągnij href="..."
            if (preg_match('/href\s*=\s*"([^"]+)"/i', $attrs, $h)) {
                // zabezpiecz wartość
                $href = htmlspecialchars($h[1], ENT_QUOTES, 'UTF-8');
            }
            // zwróć tylko czysty <a href="..." target="_blank">
            return '<a href="' . $href . '" target="_blank">';
        },
        $clean
    );

    return $clean;
}

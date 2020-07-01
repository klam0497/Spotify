CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`%` 
    SQL SECURITY DEFINER
VIEW `Artista` AS
    SELECT 
        `Artistas`.`Nombre_Artistas` AS `Nombre_Artistas`,
        `Artistas`.`Nombre_Artistas` AS `Album`,
        `Artistas`.`Nombre_Artistas` AS `Artistas`,
        COUNT(`Canciones_escuchadas`.`Id_CancionesEscuchadas`) AS `Cantidad de escuchado`,
        COUNT(`Usuario`.`Id_Usuario`) AS `Cantidad usuarios`
    FROM
        (((((`Cancion`
        JOIN `Album`)
        JOIN `Artistas`)
        JOIN `Canciones_escuchadas`)
        JOIN `Usuario`)
        JOIN `Playlist`)
    WHERE
        `Cancion`.`Id_Album` = `Album`.`Id_Album`
            AND `Cancion`.`Id_Artistas` = `Artistas`.`Id_Artistas`
            AND `Cancion`.`Id_Cancion` = `Playlist`.`Id_Cancion`
            AND `Playlist`.`Id_Usuario` = `Usuario`.`Id_Usuario`
    GROUP BY `Cancion`.`Nombre_Cancion`
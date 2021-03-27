with source as (

    select * from {{ source('stg', 'immats_2021_02') }}

),

renamed as (

    select
        index,
        date_0,
        date_1,
        genre_moto,
        marque,
        modele,
        carrosserie,
        cylindree,
        code_departement,
        departement,
        date_arrete,
        volume,
        jo,
        dep

    from source

)

select * from renamed
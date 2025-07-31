/*
|--------------------------------------------------------------------------
| Routes file
|--------------------------------------------------------------------------
|
| The routes file is used for defining the HTTP routes.
|
*/
import router from '@adonisjs/core/services/router'
import TransactionsController from '#controllers/transactions_controller'

// router.get('/', async () => {
//   return {
//     hello: 'world',
//   }
// })

router.get('/', async ({ response }) => {
  return response.redirect('/index.html')
})

router.group(() => {
  router.get('/', [TransactionsController, 'index'])
  router.post('/', [TransactionsController, 'store'])
  router.get('/:id', [TransactionsController, 'show'])
  router.put('/:id', [TransactionsController, 'update'])
  router.delete('/:id', [TransactionsController, 'destroy'])
}).prefix('/api/transactions')


import type { HttpContext } from '@adonisjs/core/http'
import Transaction from '#models/transaction'

export default class TransactionsController {
  /**
   * Display a list of resource
   */
  async index({ request }: HttpContext) {
    const page = request.input('page', 1)
    const limit = request.input('limit', 5)

    const transactions = await Transaction.query()
      .orderBy('date', 'desc')
      .paginate(page, limit)

    return transactions
  }

  /**
   * Handle form submission for the create action
   */
  async store({ request }: HttpContext) {
    const data = request.only(['description', 'type', 'amount', 'date'])
    const transaction = await Transaction.create(data)
    return transaction
  }

  /**
   * Show individual record
   */
  async show({ params }: HttpContext) {
    return await Transaction.findOrFail(params.id)
  }

  /**
   * Handle form submission for the edit action
   */
  async update({ params, request }: HttpContext) {
    const transaction = await Transaction.findOrFail(params.id)
    const data = request.only(['description', 'type', 'amount', 'date'])
    transaction.merge(data)
    await transaction.save()
    return transaction
  }

  /**
   * Delete record
   */
  async destroy({ params }: HttpContext) {
    const transaction = await Transaction.findOrFail(params.id)
    await transaction.delete()
    return { message: 'Transaction deleted successfully' }
  }
}
